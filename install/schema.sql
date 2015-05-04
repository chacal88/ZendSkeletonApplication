    create database zf2napratica;
    create database zf2napratica_test;
    
    GRANT ALL privileges ON zf2napratica.* TO zend@localhost IDENTIFIED BY 'zend';
    GRANT ALL privileges ON zf2napratica_test.* TO zend@localhost IDENTIFIED BY 'zend';

    use zf2napratica;

    CREATE  TABLE IF NOT EXISTS `users` (
      `id` INT NOT NULL AUTO_INCREMENT ,
      `username` VARCHAR(200) NOT NULL ,
      `password` VARCHAR(250) NOT NULL ,
      `name` VARCHAR(200) NULL ,
      `valid` TINYINT NULL ,
      `role` VARCHAR(20) NULL ,
      PRIMARY KEY (`id`) )
    ENGINE = InnoDB;

    CREATE  TABLE IF NOT EXISTS `posts` (
      `id` INT NOT NULL AUTO_INCREMENT ,
      `title` VARCHAR(250) NOT NULL ,
      `description` TEXT NOT NULL ,
      `post_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
      PRIMARY KEY (`id`) )
    ENGINE = InnoDB;

    CREATE  TABLE IF NOT EXISTS `comments` (
      `id` INT NOT NULL AUTO_INCREMENT ,
      `post_id` INT NOT NULL ,
      `description` TEXT NOT NULL ,
      `name` VARCHAR(200) NOT NULL ,
     `email` VARCHAR(250) NOT NULL ,
     `webpage` VARCHAR(200) NOT NULL ,
      `comment_date` TIMESTAMP NULL ,
      PRIMARY KEY (`id`, `post_id`) ,
      INDEX `fk_comments_posts` (`post_id` ASC) ,
      CONSTRAINT `fk_comments_posts`
        FOREIGN KEY (`post_id` )
            REFERENCES `posts` (`id` )
          ON DELETE NO ACTION
         ON UPDATE NO ACTION)
    ENGINE = InnoDB;