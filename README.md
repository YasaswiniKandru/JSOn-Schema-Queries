# JSOn-Schema-Queries

##JSON SCHEMA
The JSON document(post.json) consists of a single key-value pair, where key is "posts" and it's value is an array of zero of more individual posts. Each individual post consists of several key-value fields such as "postID, "postDate", "poster", "subject", "content", and "followup". "postID" is of positive integer type and all other fields except for "postDate", "poster", and "followup" are of string type. The "postDate" is of "date-time" type, "poster" will be in the format of an email address, and the "followup" field is an array of zero or more individual posts (a recursive structure!).
postingsSchema.json is a JSON Schema Specification for documents that describe posts in post.json

##JSONIQ QUERIES
Consider the JSON representation of the mail order database in mo.json. This repository has jsoniq queries for the following queries:

1. Get the names of customers who have ordered parts from employees living in Wichita.
2. Get the names of customers who have ordered all parts costing less than 20.00.
3. Get the names of employees who have never made a sale to a customer living in their own zipcode.
4. For each employee, find a list of Order Numbers they have taken.
5. Get order numbers of orders that took longer than 2 days to ship.
6. Get order number and total price for each order.

All the jsoniq queries are implemented on spark-rumble.
