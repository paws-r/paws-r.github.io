<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Cost Explorer Service

### Description

You can use the Cost Explorer API to programmatically query your cost
and usage data. You can query for aggregated data such as total monthly
costs or total daily usage. You can also query for granular data. This
might include the number of daily write operations for Amazon DynamoDB
database tables in your production environment.

Service Endpoint

The Cost Explorer API provides the following endpoint:

-   `⁠https://ce.us-east-1.amazonaws.com⁠`

For information about the costs that are associated with the Cost
Explorer API, see [Amazon Web Services Cost Management
Pricing](https://aws.amazon.com/aws-cost-management/).

### Usage

    costexplorer(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="costexplorer_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- costexplorer(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_create_anomaly_monitor/"> create_anomaly_monitor </a></td>
<td style="text-align: left;">Creates a new cost anomaly detection
monitor with the requested type and monitor specification</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_create_anomaly_subscription/"> create_anomaly_subscription </a></td>
<td style="text-align: left;">Adds an alert subscription to a cost
anomaly detection monitor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_create_cost_category_definition/"> create_cost_category_definition </a></td>
<td style="text-align: left;">Creates a new Cost Category with the
requested name and rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_delete_anomaly_monitor/"> delete_anomaly_monitor </a></td>
<td style="text-align: left;">Deletes a cost anomaly monitor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_delete_anomaly_subscription/"> delete_anomaly_subscription </a></td>
<td style="text-align: left;">Deletes a cost anomaly subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_delete_cost_category_definition/"> delete_cost_category_definition </a></td>
<td style="text-align: left;">Deletes a Cost Category</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_describe_cost_category_definition/"> describe_cost_category_definition </a></td>
<td style="text-align: left;">Returns the name, Amazon Resource Name
(ARN), rules, definition, and effective dates of a Cost Category that's
defined in the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_anomalies/"> get_anomalies </a></td>
<td style="text-align: left;">Retrieves all of the cost anomalies
detected on your account during the time period that's specified by the
DateInterval object</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_anomaly_monitors/"> get_anomaly_monitors </a></td>
<td style="text-align: left;">Retrieves the cost anomaly monitor
definitions for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_anomaly_subscriptions/"> get_anomaly_subscriptions </a></td>
<td style="text-align: left;">Retrieves the cost anomaly subscription
objects for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_cost_and_usage/"> get_cost_and_usage </a></td>
<td style="text-align: left;">Retrieves cost and usage metrics for your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_cost_and_usage_with_resources/"> get_cost_and_usage_with_resources </a></td>
<td style="text-align: left;">Retrieves cost and usage metrics with
resources for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_cost_categories/"> get_cost_categories </a></td>
<td style="text-align: left;">Retrieves an array of Cost Category names
and values incurred cost</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_cost_forecast/"> get_cost_forecast </a></td>
<td style="text-align: left;">Retrieves a forecast for how much Amazon
Web Services predicts that you will spend over the forecast time period
that you select, based on your past costs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_dimension_values/"> get_dimension_values </a></td>
<td style="text-align: left;">Retrieves all available filter values for
a specified filter over a period of time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_reservation_coverage/"> get_reservation_coverage </a></td>
<td style="text-align: left;">Retrieves the reservation coverage for
your account, which you can use to see how much of your Amazon Elastic
Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service,
or Amazon Redshift usage is covered by a reservation</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../costexplorer_get_reservation_purchase_recommendation/"> get_reservation_purchase_recommendation </a></td>
<td style="text-align: left;">Gets recommendations for reservation
purchases</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_reservation_utilization/"> get_reservation_utilization </a></td>
<td style="text-align: left;">Retrieves the reservation utilization for
your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_rightsizing_recommendation/"> get_rightsizing_recommendation </a></td>
<td style="text-align: left;">Creates recommendations that help you save
cost by identifying idle and underutilized Amazon EC2 instances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_savings_plans_coverage/"> get_savings_plans_coverage </a></td>
<td style="text-align: left;">Retrieves the Savings Plans covered for
your account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../costexplorer_get_savings_plans_purchase_recommendation/"> get_savings_plans_purchase_recommendation </a></td>
<td style="text-align: left;">Retrieves the Savings Plans
recommendations for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_savings_plans_utilization/"> get_savings_plans_utilization </a></td>
<td style="text-align: left;">Retrieves the Savings Plans utilization
for your account across date ranges with daily or monthly
granularity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_savings_plans_utilization_details/"> get_savings_plans_utilization_details </a></td>
<td style="text-align: left;">Retrieves attribute data along with
aggregate utilization and savings data for a given time period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_get_tags/"> get_tags </a></td>
<td style="text-align: left;">Queries for available tag keys and tag
values for a specified period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_get_usage_forecast/"> get_usage_forecast </a></td>
<td style="text-align: left;">Retrieves a forecast for how much Amazon
Web Services predicts that you will use over the forecast time period
that you select, based on your past usage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_list_cost_allocation_tags/"> list_cost_allocation_tags </a></td>
<td style="text-align: left;">Get a list of cost allocation tags</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_list_cost_category_definitions/"> list_cost_category_definitions </a></td>
<td style="text-align: left;">Returns the name, Amazon Resource Name
(ARN), NumberOfRules and effective dates of all Cost Categories defined
in the account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../costexplorer_list_savings_plans_purchase_recommendation_generation/"> list_savings_plans_purchase_recommendation_generation </a></td>
<td style="text-align: left;">Retrieves a list of your historical
recommendation generations within the past 30 days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of resource tags associated
with the resource specified by the Amazon Resource Name (ARN)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_provide_anomaly_feedback/"> provide_anomaly_feedback </a></td>
<td style="text-align: left;">Modifies the feedback property of a given
cost anomaly</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../costexplorer_start_savings_plans_purchase_recommendation_generation/"> start_savings_plans_purchase_recommendation_generation </a></td>
<td style="text-align: left;">Requests a Savings Plans recommendation
generation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">An API operation for adding one or more
tags (key-value pairs) to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_update_anomaly_monitor/"> update_anomaly_monitor </a></td>
<td style="text-align: left;">Updates an existing cost anomaly
monitor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_update_anomaly_subscription/"> update_anomaly_subscription </a></td>
<td style="text-align: left;">Updates an existing cost anomaly monitor
subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costexplorer_update_cost_allocation_tags_status/"> update_cost_allocation_tags_status </a></td>
<td style="text-align: left;">Updates status for cost allocation tags in
bulk, with maximum batch size of 20</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costexplorer_update_cost_category_definition/"> update_cost_category_definition </a></td>
<td style="text-align: left;">Updates an existing Cost Category</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- costexplorer()
    svc$create_anomaly_monitor(
      Foo = 123
    )

    ## End(Not run)
