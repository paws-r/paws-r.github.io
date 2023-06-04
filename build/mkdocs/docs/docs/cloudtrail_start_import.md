<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_start_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an import of logged trail events from a source S3 bucket to a destination event data store

### Description

Starts an import of logged trail events from a source S3 bucket to a
destination event data store. By default, CloudTrail only imports events
contained in the S3 bucket's `CloudTrail` prefix and the prefixes inside
the `CloudTrail` prefix, and does not check prefixes for other Amazon
Web Services services. If you want to import CloudTrail events contained
in another prefix, you must include the prefix in the `S3LocationUri`.
For more considerations about importing trail events, see
[Considerations](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations).

When you start a new import, the `Destinations` and `ImportSource`
parameters are required. Before starting a new import, disable any
access control lists (ACLs) attached to the source S3 bucket. For more
information about disabling ACLs, see [Controlling ownership of objects
and disabling ACLs for your
bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

When you retry an import, the `ImportID` parameter is required.

If the destination event data store is for an organization, you must use
the management account to import trail events. You cannot use the
delegated administrator account for the organization.

### Usage

    cloudtrail_start_import(Destinations, ImportSource, StartEventTime,
      EndEventTime, ImportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_start_import_:_Destinations">Destinations</code></td>
<td><p>The ARN of the destination event data store. Use this parameter
for a new import.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_start_import_:_ImportSource">ImportSource</code></td>
<td><p>The source S3 bucket for the import. Use this parameter for a new
import.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_start_import_:_StartEventTime">StartEventTime</code></td>
<td><p>Use with <code>EndEventTime</code> to bound a
<code>start_import</code> request, and limit imported trail events to
only those events logged within a specified time period. When you
specify a time range, CloudTrail checks the prefix and log file names to
verify the names contain a date between the specified
<code>StartEventTime</code> and <code>EndEventTime</code> before
attempting to import events.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_start_import_:_EndEventTime">EndEventTime</code></td>
<td><p>Use with <code>StartEventTime</code> to bound a
<code>start_import</code> request, and limit imported trail events to
only those events logged within a specified time period. When you
specify a time range, CloudTrail checks the prefix and log file names to
verify the names contain a date between the specified
<code>StartEventTime</code> and <code>EndEventTime</code> before
attempting to import events.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudtrail_start_import_:_ImportId">ImportId</code></td>
<td><p>The ID of the import. Use this parameter when you are retrying an
import.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportId = "string",
      Destinations = list(
        "string"
      ),
      ImportSource = list(
        S3 = list(
          S3LocationUri = "string",
          S3BucketRegion = "string",
          S3BucketAccessRoleArn = "string"
        )
      ),
      StartEventTime = as.POSIXct(
        "2015-01-01"
      ),
      EndEventTime = as.POSIXct(
        "2015-01-01"
      ),
      ImportStatus = "INITIALIZING"|"IN_PROGRESS"|"FAILED"|"STOPPED"|"COMPLETED",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_import(
      Destinations = list(
        "string"
      ),
      ImportSource = list(
        S3 = list(
          S3LocationUri = "string",
          S3BucketRegion = "string",
          S3BucketAccessRoleArn = "string"
        )
      ),
      StartEventTime = as.POSIXct(
        "2015-01-01"
      ),
      EndEventTime = as.POSIXct(
        "2015-01-01"
      ),
      ImportId = "string"
    )
