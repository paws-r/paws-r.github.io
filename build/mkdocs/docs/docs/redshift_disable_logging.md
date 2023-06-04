<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_disable_logging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster

### Description

Stops logging information, such as queries and connection attempts, for
the specified Amazon Redshift cluster.

### Usage

    redshift_disable_logging(ClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_disable_logging_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster on which logging is to
be stopped.</p>
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

    svc$disable_logging(
      ClusterIdentifier = "string"
    )
