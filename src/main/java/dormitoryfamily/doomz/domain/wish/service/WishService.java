package dormitoryfamily.doomz.domain.wish.service;

import dormitoryfamily.doomz.domain.article.dto.response.ArticleListResponseDto;
import dormitoryfamily.doomz.domain.article.dto.response.SimpleArticleResponseDto;
import dormitoryfamily.doomz.domain.article.entity.Article;
import dormitoryfamily.doomz.domain.article.entity.type.ArticleDormitoryType;
import dormitoryfamily.doomz.domain.article.exception.ArticleNotExistsException;
import dormitoryfamily.doomz.domain.article.repository.ArticleRepository;
import dormitoryfamily.doomz.domain.member.entity.Member;
import dormitoryfamily.doomz.domain.wish.dto.WishMemberListResponseDto;
import dormitoryfamily.doomz.domain.wish.dto.WishMemberResponseDto;
import dormitoryfamily.doomz.domain.wish.entity.Wish;
import dormitoryfamily.doomz.domain.wish.exception.AlreadyWishedArticleException;
import dormitoryfamily.doomz.domain.wish.exception.NotWishedArticleException;
import dormitoryfamily.doomz.domain.wish.repository.WishRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.stereotype.Service;

import java.util.List;

import static java.util.stream.Collectors.*;

@Service
@RequiredArgsConstructor
@Transactional
public class WishService {

    private final ArticleRepository articleRepository;
    private final WishRepository wishRepository;

    public void saveWish(Member member, Long articleId) {
        Article article = getArticleById(articleId);
        checkArticleIsNotWished(member.getId(),articleId);
        Wish wish = Wish.createWish(member, article);
        wishRepository.save(wish);
        article.increaseWishCount();
    }

    public WishMemberListResponseDto getWishMembers(Long articleId){
        getArticleById(articleId);
        List<Wish> wishes = wishRepository.findAllByArticleId(articleId);
        List<WishMemberResponseDto> wishMemberResponseDtos = wishes.stream()
                .map(wish -> WishMemberResponseDto.fromMember(wish.getMember())).collect(toList());
        return WishMemberListResponseDto.toDto(wishMemberResponseDtos);
    }

    public void removeWish(Member member, Long articleId){
        Article article = getArticleById(articleId);
        Wish wish = getWishByMemberIdAndArticleId(member.getId(), articleId);
        wishRepository.delete(wish);
        article.decreaseWishCount();
    }

    private Article getArticleById(Long articleId){
        return articleRepository.findById(articleId)
                .orElseThrow(ArticleNotExistsException::new);
    }

    private void checkArticleIsNotWished(Long memberId, Long articleId){
        if(wishRepository.existsByMemberIdAndArticleId(memberId, articleId)){
            throw new AlreadyWishedArticleException();
        }
    }

    private Wish getWishByMemberIdAndArticleId(Long memberId, Long articleId){
        return wishRepository.findByMemberIdAndArticleId(memberId, articleId)
                .orElseThrow(NotWishedArticleException::new);
    }

    public ArticleListResponseDto findMyArticleWishes(Member loginmember, String articleDormitoryType, Pageable pageable ) {

        ArticleDormitoryType dormitoryType = ArticleDormitoryType.fromName(articleDormitoryType);

        List<Wish> myWishes = wishRepository.findAllByMemberId(loginmember.getId());

        List<Long> articleIds = myWishes.stream()
                .map(wish -> wish.getArticle().getId())
                .toList();

        Slice<Article> articles = articleRepository
                .findAllByIdInAndDormitoryTypeAndBoardType(articleIds, dormitoryType, null, pageable);

        List<SimpleArticleResponseDto> articleResponseDtos = articles.stream()
                .map(article -> {
                    return SimpleArticleResponseDto.fromEntity(article, true);
                })
                .toList();

        return ArticleListResponseDto.fromResponseDtos(articles, articleResponseDtos);
    }
}
