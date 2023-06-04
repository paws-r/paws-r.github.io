<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_start_report_creation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a report that lists all tagged resources in the accounts across your organization and tells whether each resource is compliant with the effective tag policy

### Description

Generates a report that lists all tagged resources in the accounts
across your organization and tells whether each resource is compliant
with the effective tag policy. Compliance data is refreshed daily. The
report is generated asynchronously.

The generated report is saved to the following location:

`⁠s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv⁠`

You can call this operation only from the organization's management
account and from the us-east-1 Region.

### Usage

    resourcegroupstaggingapi_start_report_creation(S3Bucket)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroupstaggingapi_start_report_creation_:_S3Bucket">S3Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket where the report will
be stored; for example:</p>
<p><code>awsexamplebucket</code></p>
<p>For more information on S3 bucket requirements, including an example
bucket policy, see the example S3 bucket policy on this page.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_report_creation(
      S3Bucket = "string"
    )
