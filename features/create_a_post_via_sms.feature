Feature: Create a post via SMS
  In order to let people know about an event or product for sale
  As a user
  I want to be able to create a post via sms

  Scenario Outline: I text in some posts
    When I text "<message_text>" from "66354668874"
    Then a mobile number should exist with number: "66354668874"
    And a mo message should exist with mobile_number: the mobile number
    And a post should exist with what: "<message_text>", where: "<where>", postable: the mo message

    Examples:
      | message_text                      | where |
      | Pham Ngu Lao HCMC Badmitten Game  | phường Phạm Ngũ Lão, District 1, Ho Chi Minh City, Vietnam      |

