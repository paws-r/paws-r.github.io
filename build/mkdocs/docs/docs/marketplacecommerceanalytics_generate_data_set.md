<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecommerceanalytics_generate_data_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available

### Description

Given a data set type and data set publication date, asynchronously
publishes the requested data set to the specified S3 bucket and notifies
the specified SNS topic once the data is available. Returns a unique
request identifier that can be used to correlate requests with
notifications from the SNS topic. Data sets will be published in
comma-separated values (CSV) format with the file name
{data\_set\_type}\_YYYY-MM-DD.csv. If a file with the same name already
exists (e.g. if the same data set is requested twice), the original file
will be overwritten by the new file. Requires a Role with an attached
permissions policy providing Allow permissions for the following
actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes,
sns:Publish, iam:GetRolePolicy.

### Usage

    marketplacecommerceanalytics_generate_data_set(dataSetType,
      dataSetPublicationDate, roleNameArn, destinationS3BucketName,
      destinationS3Prefix, snsTopicArn, customerDefinedValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_dataSetType">dataSetType</code></td>
<td><p>[required] The desired data set type.</p>
<ul>
<li><p><strong>customer_subscriber_hourly_monthly_subscriptions</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>customer_subscriber_annual_subscriptions</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>daily_business_usage_by_instance_type</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>daily_business_fees</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>daily_business_free_trial_conversions</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>daily_business_new_instances</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>daily_business_new_product_subscribers</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>daily_business_canceled_product_subscribers</strong></p>
<p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p></li>
<li><p><strong>monthly_revenue_billing_and_revenue_data</strong></p>
<p>From 2017-09-15 to present: Available monthly on the 15th day of the
month by 24:00 UTC. Data includes metered transactions (e.g. hourly)
from one month prior.</p></li>
<li><p><strong>monthly_revenue_annual_subscriptions</strong></p>
<p>From 2017-09-15 to present: Available monthly on the 15th day of the
month by 24:00 UTC. Data includes up-front software charges (e.g.
annual) from one month prior.</p></li>
<li><p><strong>monthly_revenue_field_demonstration_usage</strong></p>
<p>From 2018-03-15 to present: Available monthly on the 15th day of the
month by 24:00 UTC.</p></li>
<li><p><strong>monthly_revenue_flexible_payment_schedule</strong></p>
<p>From 2018-11-15 to present: Available monthly on the 15th day of the
month by 24:00 UTC.</p></li>
<li><p><strong>disbursed_amount_by_product</strong></p>
<p>From 2017-09-15 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>disbursed_amount_by_instance_hours</strong></p>
<p>From 2017-09-15 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>disbursed_amount_by_customer_geo</strong></p>
<p>From 2017-09-15 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>disbursed_amount_by_age_of_uncollected_funds</strong></p>
<p>From 2017-09-15 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>disbursed_amount_by_age_of_disbursed_funds</strong></p>
<p>From 2017-09-15 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>disbursed_amount_by_age_of_past_due_funds</strong></p>
<p>From 2018-04-07 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>disbursed_amount_by_uncollected_funds_breakdown</strong></p>
<p>From 2019-10-04 to present: Available every 30 days by 24:00
UTC.</p></li>
<li><p><strong>sales_compensation_billed_revenue</strong></p>
<p>From 2017-09-15 to present: Available monthly on the 15th day of the
month by 24:00 UTC. Data includes metered transactions (e.g. hourly)
from one month prior, and up-front software charges (e.g. annual) from
one month prior.</p></li>
<li><p><strong>us_sales_and_use_tax_records</strong></p>
<p>From 2017-09-15 to present: Available monthly on the 15th day of the
month by 24:00 UTC.</p></li>
<li><p><strong>disbursed_amount_by_product_with_uncollected_funds</strong></p>
<p>This data set is deprecated. Download related reports from AMMP
instead!</p></li>
<li><p><strong>customer_profile_by_industry</strong></p>
<p>This data set is deprecated. Download related reports from AMMP
instead!</p></li>
<li><p><strong>customer_profile_by_revenue</strong></p>
<p>This data set is deprecated. Download related reports from AMMP
instead!</p></li>
<li><p><strong>customer_profile_by_geography</strong></p>
<p>This data set is deprecated. Download related reports from AMMP
instead!</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_dataSetPublicationDate">dataSetPublicationDate</code></td>
<td><p>[required] The date a data set was published. For daily data
sets, provide a date with day-level granularity for the desired day. For
monthly data sets except those with prefix disbursed_amount, provide a
date with month-level granularity for the desired month (the day value
will be ignored). For data sets with prefix disbursed_amount, provide a
date with day-level granularity for the desired day. For these data sets
we will look backwards in time over the range of 31 days until the first
data set is found (the latest one).</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_roleNameArn">roleNameArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Role with an
attached permissions policy to interact with the provided AWS
services.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_destinationS3BucketName">destinationS3BucketName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the destination
S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_destinationS3Prefix">destinationS3Prefix</code></td>
<td><p>(Optional) The desired S3 prefix for the published data set,
similar to a directory path in standard file systems. For example, if
given the bucket name "mybucket" and the prefix "myprefix/mydatasets",
the output file "outputfile" would be published to
"s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory
structure does not exist, it will be created. If no prefix is provided,
the data set will be published to the S3 bucket root.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_snsTopicArn">snsTopicArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) for the SNS Topic that will
be notified when the data set has been published or if an error has
occurred.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_generate_data_set_:_customerDefinedValues">customerDefinedValues</code></td>
<td><p>(Optional) Key-value pairs which will be returned, unmodified, in
the Amazon SNS notification message and the data set metadata file.
These key-value pairs can be used to correlated responses with tracking
information from other systems.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      dataSetRequestId = "string"
    )

### Request syntax

    svc$generate_data_set(
      dataSetType = "customer_subscriber_hourly_monthly_subscriptions"|"customer_subscriber_annual_subscriptions"|"daily_business_usage_by_instance_type"|"daily_business_fees"|"daily_business_free_trial_conversions"|"daily_business_new_instances"|"daily_business_new_product_subscribers"|"daily_business_canceled_product_subscribers"|"monthly_revenue_billing_and_revenue_data"|"monthly_revenue_annual_subscriptions"|"monthly_revenue_field_demonstration_usage"|"monthly_revenue_flexible_payment_schedule"|"disbursed_amount_by_product"|"disbursed_amount_by_product_with_uncollected_funds"|"disbursed_amount_by_instance_hours"|"disbursed_amount_by_customer_geo"|"disbursed_amount_by_age_of_uncollected_funds"|"disbursed_amount_by_age_of_disbursed_funds"|"disbursed_amount_by_age_of_past_due_funds"|"disbursed_amount_by_uncollected_funds_breakdown"|"customer_profile_by_industry"|"customer_profile_by_revenue"|"customer_profile_by_geography"|"sales_compensation_billed_revenue"|"us_sales_and_use_tax_records",
      dataSetPublicationDate = as.POSIXct(
        "2015-01-01"
      ),
      roleNameArn = "string",
      destinationS3BucketName = "string",
      destinationS3Prefix = "string",
      snsTopicArn = "string",
      customerDefinedValues = list(
        "string"
      )
    )
