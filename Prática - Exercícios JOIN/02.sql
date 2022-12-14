SELECT testimonials.id AS id, users_write.name AS writer, users_recipient.name AS recipient, testimonials.message 
FROM users users_write 
JOIN testimonials 
ON testimonials."writerId" = users_write.id 
JOIN users users_recipient ON testimonials."recipientId" = users_recipient.id;