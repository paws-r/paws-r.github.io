<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Budgets

### Description

Use the Amazon Web Services Budgets API to plan your service usage,
service costs, and instance reservations. This API reference provides
descriptions, syntax, and usage examples for each of the actions and
data types for the Amazon Web Services Budgets feature.

Budgets provide you with a way to see the following information:

-   How close your plan is to your budgeted amount or to the free tier
    limits

-   Your usage-to-date, including how much you've used of your Reserved
    Instances (RIs)

-   Your current estimated charges from Amazon Web Services, and how
    much your predicted usage will accrue in charges by the end of the
    month

-   How much of your budget has been used

Amazon Web Services updates your budget status several times a day.
Budgets track your unblended costs, subscriptions, refunds, and RIs. You
can create the following types of budgets:

-   **Cost budgets** - Plan how much you want to spend on a service.

-   **Usage budgets** - Plan how much you want to use one or more
    services.

-   **RI utilization budgets** - Define a utilization threshold, and
    receive alerts when your RI usage falls below that threshold. This
    lets you see if your RIs are unused or under-utilized.

-   **RI coverage budgets** - Define a coverage threshold, and receive
    alerts when the number of your instance hours that are covered by
    RIs fall below that threshold. This lets you see how much of your
    instance usage is covered by a reservation.

Service Endpoint

The Amazon Web Services Budgets API provides the following endpoint:

-   https://budgets.amazonaws.com

For information about costs that are associated with the Amazon Web
Services Budgets API, see [Amazon Web Services Cost Management
Pricing](https://aws.amazon.com/aws-cost-management/).

### Usage

    budgets(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="budgets_:_config">config</code></td>
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

    svc <- budgets(
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
<td style="text-align: left;"><a href="../budgets_create_budget/"> create_budget </a></td>
<td style="text-align: left;">Creates a budget and, if included,
notifications and subscribers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_create_budget_action/"> create_budget_action </a></td>
<td style="text-align: left;">Creates a budget action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_create_notification/"> create_notification </a></td>
<td style="text-align: left;">Creates a notification</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_create_subscriber/"> create_subscriber </a></td>
<td style="text-align: left;">Creates a subscriber</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_delete_budget/"> delete_budget </a></td>
<td style="text-align: left;">Deletes a budget</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_delete_budget_action/"> delete_budget_action </a></td>
<td style="text-align: left;">Deletes a budget action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_delete_notification/"> delete_notification </a></td>
<td style="text-align: left;">Deletes a notification</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_delete_subscriber/"> delete_subscriber </a></td>
<td style="text-align: left;">Deletes a subscriber</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_describe_budget/"> describe_budget </a></td>
<td style="text-align: left;">Describes a budget</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_describe_budget_action/"> describe_budget_action </a></td>
<td style="text-align: left;">Describes a budget action detail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_describe_budget_action_histories/"> describe_budget_action_histories </a></td>
<td style="text-align: left;">Describes a budget action history
detail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_describe_budget_actions_for_account/"> describe_budget_actions_for_account </a></td>
<td style="text-align: left;">Describes all of the budget actions for an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_describe_budget_actions_for_budget/"> describe_budget_actions_for_budget </a></td>
<td style="text-align: left;">Describes all of the budget actions for a
budget</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../budgets_describe_budget_notifications_for_account/"> describe_budget_notifications_for_account </a></td>
<td style="text-align: left;">Lists the budget names and notifications
that are associated with an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_describe_budget_performance_history/"> describe_budget_performance_history </a></td>
<td style="text-align: left;">Describes the history for DAILY, MONTHLY,
and QUARTERLY budgets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_describe_budgets/"> describe_budgets </a></td>
<td style="text-align: left;">Lists the budgets that are associated with
an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_describe_notifications_for_budget/"> describe_notifications_for_budget </a></td>
<td style="text-align: left;">Lists the notifications that are
associated with a budget</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_describe_subscribers_for_notification/"> describe_subscribers_for_notification </a></td>
<td style="text-align: left;">Lists the subscribers that are associated
with a notification</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_execute_budget_action/"> execute_budget_action </a></td>
<td style="text-align: left;">Executes a budget action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_update_budget/"> update_budget </a></td>
<td style="text-align: left;">Updates a budget</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_update_budget_action/"> update_budget_action </a></td>
<td style="text-align: left;">Updates a budget action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../budgets_update_notification/"> update_notification </a></td>
<td style="text-align: left;">Updates a notification</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../budgets_update_subscriber/"> update_subscriber </a></td>
<td style="text-align: left;">Updates a subscriber</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- budgets()
    svc$create_budget(
      Foo = 123
    )

    ## End(Not run)
