pacage	main
import (
    "github.com/gin-gonic/gin"
    "github.com/dgrijalva/jwt-go"
    "time"
)

// Модель пользователя
type User struct {
    ID			uint   `json:"id"`
    Username	string `json:"username"`
	E-mail		string `json:"E-mail"`
    Password	string `json:"password"`
	Address		string `json:"Address"`
	Phone		string `json:"Phone"`
    Role    	string `json:"role"` // admin, user, seller
}