package org.nhnnext.repository;

import java.util.List;

import org.nhnnext.web.Comment;
import org.nhnnext.web.Map;
import org.springframework.data.repository.CrudRepository;

public interface CommentRepository extends CrudRepository<Comment, Long>{
}
