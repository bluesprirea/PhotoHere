package org.nhnnext.repository;

import org.nhnnext.web.User;
import org.springframework.data.repository.CrudRepository;

public interface ClientRepository extends CrudRepository<User, String>{
}
