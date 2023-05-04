package blog.dao;

import java.util.List;
import java.util.Map;

import blog.model.Article;

public interface ArticleDao {

	static final String SEARCH_ARTICLE = "article";
	static final String SEARCH_SORT = "sort";

	static final int LESS = 1;
	static final int MORE = 2;


	void addVisit(int article_id);

	Article getANearArticle(String time, int less_or_more);

	Map getColumAndCount(String search_column);


	List getAllSort();


	Article addArticle(Article a);


	boolean deleteArticle(String id);

	List getAllArticle();

	List getVisitRank();


	List<Article> getArticleByColumn(String column, String value);


	int getCount(String search_key);

	
	int star_article(int id);

	boolean updateSort(String old_sort, String new_sort);


	boolean delelteSort(String sort);

}