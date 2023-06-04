<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_logging_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster

### Description

Describes whether information, such as queries and connection attempts,
is being logged for the specified Amazon Redshift cluster.

### Usage

    redshift_describe_logging_status(ClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_logging_status_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster from which to get the
logging status.</p>
<p>Example: <code>examplecluster</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LoggingEnabled = TRUE|FALSE,
      BucketName = "string",
      S3KeyPrefix = "string",
      LastSuccessfulDeliveryTime = as.POSIXct(
        "2015-01-01"
      ),
      LastFailureTime = as.POSIXct(
        "2015-01-01"
      ),
      LastFailureMessage = "string",
      LogDestinationType = "s3"|"cloudwatch",
      LogExports = list(
        "string"
      )
    )

### Request syntax

    svc$describe_logging_status(
      ClusterIdentifier = "string"
    )
