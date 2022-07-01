# Customer_Segmentation-Sales_Analysis
# RFM Analysis
Implementing the customer segmentation on the business' data using RFM analysis with R and making inferences about the best, loyal, potential, and churned out customers for the business.

RFM (Recency, Frequency & Monetary) analysis: “is a behavior based technique used to segment customers by examining their transaction history.”

->It is based on the marketing axiom that 80% of your business comes from 20% of your customers. ->The 80-20 rule maintains that 80% of outcomes (outputs) come from 20% of causes (inputs). In the 80-20 rule, you prioritize the 20% of factors that will produce the best results. A principle of the 80-20 rule is to identify an entity's best assets and use them efficiently to create maximum value.

Key RFM Metrics:

1.Recency (How recently a customer has purchased?)

2.Frequency (How often do they purchase?)

3.Monetary (How much the customer spends?)


RFM ANALYSIS Steps:

1 - As mentioned above , first step is to collect data from the database of your client that, is showed above in the from of collected dataset.

2 - Second step is to calculate RFM Metrics which have already been defined above. 


3 - Next comes RFM Scoring, which is done in two steps:

-> Assigning bins to customers or make RFM quintiles , Why we do this? let's say in the total revenue section , the customers revenue distribution would be like: someone spent $10, another one $50, $100, $250, $500, $700, and so on.. So, it wouldn't be wise or even impractical to analyze each and every one besides we bin them, so that every bin/quintile would be the representative of chunk of customers fall within specific monetary value and can be treated accordingly, same goes for other two metrics.


-> Assign scores to these bins, which is simply like marking test scores of a class in the school, the customer with rfm score of etc would be this(segment name) and with rfm score of etc would be that (segment name).

4 - Now comes the final step where we define segments and segment customers based upon their RFM score.

A segment must contain following details:

the name of the segment the definition of the segment the intervals for the recency, frequency & monetary scores


# Others problems we solved

-Top 5 customers by their average spending to our ecommerce store

-Most sold out products

-Most consistent customers that are the love of our ecommerce store

-Which city has highest orders

-variable orders on days of week

-Monthly wise orders 
