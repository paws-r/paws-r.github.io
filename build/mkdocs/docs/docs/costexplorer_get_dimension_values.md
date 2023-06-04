<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_dimension_values</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all available filter values for a specified filter over a period of time

### Description

Retrieves all available filter values for a specified filter over a
period of time. You can search the dimension values for an arbitrary
string.

### Usage

    costexplorer_get_dimension_values(SearchString, TimePeriod, Dimension,
      Context, Filter, SortBy, MaxResults, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_dimension_values_:_SearchString">SearchString</code></td>
<td><p>The value that you want to search the filter values for.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_dimension_values_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] The start date and end date for retrieving the
dimension values. The start date is inclusive, but the end date is
exclusive. For example, if <code>start</code> is <code>2017-01-01</code>
and <code>end</code> is <code>2017-05-01</code>, then the cost and usage
data is retrieved from <code>2017-01-01</code> up to and including
<code>2017-04-30</code> but not including
<code>2017-05-01</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_dimension_values_:_Dimension">Dimension</code></td>
<td><p>[required] The name of the dimension. Each <code>Dimension</code>
is available for a different <code>Context</code>. For more information,
see <code>Context</code>. <code>LINK_ACCOUNT_NAME</code> and
<code>SERVICE_CODE</code> can only be used in <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/">CostCategoryRule</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_dimension_values_:_Context">Context</code></td>
<td><p>The context for the call to <code>get_dimension_values</code>.
This can be <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>.
The default value is <code>COST_AND_USAGE</code>. If the context is set
to <code>RESERVATIONS</code>, the resulting dimension values can be used
in the <code>get_reservation_utilization</code> operation. If the
context is set to <code>COST_AND_USAGE</code>, the resulting dimension
values can be used in the <code>get_cost_and_usage</code> operation.</p>
<p>If you set the context to <code>COST_AND_USAGE</code>, you can use
the following dimensions for searching:</p>
<ul>
<li><p>AZ - The Availability Zone. An example is <code
style="white-space: pre;">⁠us-east-1a⁠</code>.</p></li>
<li><p>BILLING_ENTITY - The Amazon Web Services seller that your account
is with. Possible values are the following:</p>
<p>\- Amazon Web Services(Amazon Web Services): The entity that sells
Amazon Web Services.</p>
<p>\- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian
entity that's an acting reseller for Amazon Web Services in India.</p>
<p>\- Amazon Web Services Marketplace: The entity that supports the sale
of solutions that are built on Amazon Web Services by third-party
software providers.</p></li>
<li><p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples
are Windows or Linux.</p></li>
<li><p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database
Service deployments. Valid values are <code>SingleAZ</code> and
<code>MultiAZ</code>.</p></li>
<li><p>DATABASE_ENGINE - The Amazon Relational Database Service
database. Examples are Aurora or MySQL.</p></li>
<li><p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
<code>m4.xlarge</code>.</p></li>
<li><p>INSTANCE_TYPE_FAMILY - A family of instance types optimized to
fit different use cases. Examples are <code
style="white-space: pre;">⁠Compute Optimized⁠</code> (for example,
<code>C4</code>, <code>C5</code>, <code>C6g</code>, and
<code>C7g</code>), <code
style="white-space: pre;">⁠Memory Optimization⁠</code> (for example,
<code>R4</code>, <code>R5n</code>, <code>R5b</code>, and
<code>R6g</code>).</p></li>
<li><p>INVOICING_ENTITY - The name of the entity that issues the Amazon
Web Services invoice.</p></li>
<li><p>LEGAL_ENTITY_NAME - The name of the organization that sells you
Amazon Web Services services, such as Amazon Web Services.</p></li>
<li><p>LINKED_ACCOUNT - The description in the attribute map that
includes the full name of the member account. The value field contains
the Amazon Web Services ID of the member account.</p></li>
<li><p>OPERATING_SYSTEM - The operating system. Examples are Windows or
Linux.</p></li>
<li><p>OPERATION - The action performed. Examples include
<code>RunInstance</code> and <code>CreateBucket</code>.</p></li>
<li><p>PLATFORM - The Amazon EC2 operating system. Examples are Windows
or Linux.</p></li>
<li><p>PURCHASE_TYPE - The reservation type of the purchase that this
usage is related to. Examples include On-Demand Instances and Standard
Reserved Instances.</p></li>
<li><p>RESERVATION_ID - The unique identifier for an Amazon Web Services
Reservation Instance.</p></li>
<li><p>SAVINGS_PLAN_ARN - The unique identifier for your Savings
Plans.</p></li>
<li><p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or
Compute).</p></li>
<li><p>SERVICE - The Amazon Web Services service such as Amazon
DynamoDB.</p></li>
<li><p>TENANCY - The tenancy of a resource. Examples are shared or
dedicated.</p></li>
<li><p>USAGE_TYPE - The type of usage. An example is
DataTransfer-In-Bytes. The response for the
<code>get_dimension_values</code> operation includes a unit attribute.
Examples include GB and Hrs.</p></li>
<li><p>USAGE_TYPE_GROUP - The grouping of common usage types. An example
is Amazon EC2: CloudWatch – Alarms. The response for this operation
includes a unit attribute.</p></li>
<li><p>REGION - The Amazon Web Services Region.</p></li>
<li><p>RECORD_TYPE - The different types of charges such as Reserved
Instance (RI) fees, usage costs, tax refunds, and credits.</p></li>
<li><p>RESOURCE_ID - The unique identifier of the resource. ResourceId
is an opt-in feature only available for last 14 days for EC2-Compute
Service.</p></li>
</ul>
<p>If you set the context to <code>RESERVATIONS</code>, you can use the
following dimensions for searching:</p>
<ul>
<li><p>AZ - The Availability Zone. An example is <code
style="white-space: pre;">⁠us-east-1a⁠</code>.</p></li>
<li><p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples
are Windows or Linux.</p></li>
<li><p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database
Service deployments. Valid values are <code>SingleAZ</code> and
<code>MultiAZ</code>.</p></li>
<li><p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
<code>m4.xlarge</code>.</p></li>
<li><p>LINKED_ACCOUNT - The description in the attribute map that
includes the full name of the member account. The value field contains
the Amazon Web Services ID of the member account.</p></li>
<li><p>PLATFORM - The Amazon EC2 operating system. Examples are Windows
or Linux.</p></li>
<li><p>REGION - The Amazon Web Services Region.</p></li>
<li><p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI).
Values are regional or a single Availability Zone.</p></li>
<li><p>TAG (Coverage only) - The tags that are associated with a
Reserved Instance (RI).</p></li>
<li><p>TENANCY - The tenancy of a resource. Examples are shared or
dedicated.</p></li>
</ul>
<p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the
following dimensions for searching:</p>
<ul>
<li><p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or
Compute)</p></li>
<li><p>PAYMENT_OPTION - The payment option for the given Savings Plans
(for example, All Upfront)</p></li>
<li><p>REGION - The Amazon Web Services Region.</p></li>
<li><p>INSTANCE_TYPE_FAMILY - The family of instances (For example,
<code>m5</code>)</p></li>
<li><p>LINKED_ACCOUNT - The description in the attribute map that
includes the full name of the member account. The value field contains
the Amazon Web Services ID of the member account.</p></li>
<li><p>SAVINGS_PLAN_ARN - The unique identifier for your Savings
Plans.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_dimension_values_:_Filter">Filter</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_dimension_values_:_SortBy">SortBy</code></td>
<td><p>The value that you want to sort the data by.</p>
<p>The key represents cost and usage metrics. The following values are
supported:</p>
<ul>
<li><p><code>BlendedCost</code></p></li>
<li><p><code>UnblendedCost</code></p></li>
<li><p><code>AmortizedCost</code></p></li>
<li><p><code>NetAmortizedCost</code></p></li>
<li><p><code>NetUnblendedCost</code></p></li>
<li><p><code>UsageQuantity</code></p></li>
<li><p><code>NormalizedUsageAmount</code></p></li>
</ul>
<p>The supported values for the <code>SortOrder</code> key are
<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
<p>When you specify a <code>SortBy</code> paramater, the context must be
<code>COST_AND_USAGE</code>. Further, when using <code>SortBy</code>,
<code>NextPageToken</code> and <code>SearchString</code> aren't
supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_dimension_values_:_MaxResults">MaxResults</code></td>
<td><p>This field is only used when SortBy is provided in the request.
The maximum number of objects that are returned for this request. If
MaxResults isn't specified with SortBy, the request returns 1000 results
as the default value for this parameter.</p>
<p>For <code>get_dimension_values</code>, MaxResults has an upper limit
of 1000.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_dimension_values_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DimensionValues = list(
        list(
          Value = "string",
          Attributes = list(
            "string"
          )
        )
      ),
      ReturnSize = 123,
      TotalSize = 123,
      NextPageToken = "string"
    )

### Request syntax

    svc$get_dimension_values(
      SearchString = "string",
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      Dimension = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE"|"INVOICING_ENTITY"|"ANOMALY_TOTAL_IMPACT_ABSOLUTE"|"ANOMALY_TOTAL_IMPACT_PERCENTAGE",
      Context = "COST_AND_USAGE"|"RESERVATIONS"|"SAVINGS_PLANS",
      Filter = list(
        Or = list(
          list()
        ),
        And = list(
          list()
        ),
        Not = list(),
        Dimensions = list(
          Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE"|"INVOICING_ENTITY"|"ANOMALY_TOTAL_IMPACT_ABSOLUTE"|"ANOMALY_TOTAL_IMPACT_PERCENTAGE",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        Tags = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        CostCategories = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        )
      ),
      SortBy = list(
        list(
          Key = "string",
          SortOrder = "ASCENDING"|"DESCENDING"
        )
      ),
      MaxResults = 123,
      NextPageToken = "string"
    )
