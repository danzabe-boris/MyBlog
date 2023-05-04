package blog.dao;

import java.util.List;

import blog.model.Comment;

public interface CommentDao {

	boolean deleteComment(int comment_id);

	boolean addComment(Comment comment);

	List getComment(int article_id);

	int star_diss(int id, int star_or_diss);

}