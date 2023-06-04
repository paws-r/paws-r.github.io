<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecommerceanalytics_start_support_data_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available

### Description

Given a data set type and a from date, asynchronously publishes the
requested customer support data to the specified S3 bucket and notifies
the specified SNS topic once the data is available. Returns a unique
request identifier that can be used to correlate requests with
notifications from the SNS topic. Data sets will be published in
comma-separated values (CSV) format with the file name
{data\_set\_type}\_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same
name already exists (e.g. if the same data set is requested twice), the
original file will be overwritten by the new file. Requires a Role with
an attached permissions policy providing Allow permissions for the
following actions: s3:PutObject, s3:GetBucketLocation,
sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.

### Usage

    marketplacecommerceanalytics_start_support_data_export(dataSetType,
      fromDate, roleNameArn, destinationS3BucketName, destinationS3Prefix,
      snsTopicArn, customerDefinedValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_start_support_data_export_:_dataSetType">dataSetType</code></td>
<td><p>[required] Specifies the data set type to be written to the
output csv file. The data set types customer_support_contacts_data and
test_customer_support_contacts_data both result in a csv file containing
the following fields: Product Id, Product Code, Customer Guid,
Subscription Guid, Subscription Start Date, Organization, AWS Account
Id, Given Name, Surname, Telephone Number, Email, Title, Country Code,
ZIP Code, Operation Type, and Operation Time.</p>
<ul>
<li><p><em>customer_support_contacts_data</em> Customer support contact
data. The data set will contain all changes (Creates, Updates, and
Deletes) to customer support contact data from the date specified in the
from_date parameter.</p></li>
<li><p><em>test_customer_support_contacts_data</em> An example data set
containing static test data in the same format as
customer_support_contacts_data</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="marketplacecommerceanalytics_start_support_data_export_:_fromDate">fromDate</code></td>
<td><p>[required] The start date from which to retrieve the data set in
UTC. This parameter only affects the customer_support_contacts_data data
set type.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_start_support_data_export_:_roleNameArn">roleNameArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Role with an
attached permissions policy to interact with the provided AWS
services.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecommerceanalytics_start_support_data_export_:_destinationS3BucketName">destinationS3BucketName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the destination
S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_start_support_data_export_:_destinationS3Prefix">destinationS3Prefix</code></td>
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
id="marketplacecommerceanalytics_start_support_data_export_:_snsTopicArn">snsTopicArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) for the SNS Topic that will
be notified when the data set has been published or if an error has
occurred.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecommerceanalytics_start_support_data_export_:_customerDefinedValues">customerDefinedValues</code></td>
<td><p>(Optional) Key-value pairs which will be returned, unmodified, in
the Amazon SNS notification message and the data set metadata
file.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      dataSetRequestId = "string"
    )

### Request syntax

    svc$start_support_data_export(
      dataSetType = "customer_support_contacts_data"|"test_customer_support_contacts_data",
      fromDate = as.POSIXct(
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
