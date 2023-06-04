<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_enable_logging</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster

### Description

Starts logging information, such as queries and connection attempts, for
the specified Amazon Redshift cluster.

### Usage

    redshift_enable_logging(ClusterIdentifier, BucketName, S3KeyPrefix,
      LogDestinationType, LogExports)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_enable_logging_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster on which logging is to
be started.</p>
<p>Example: <code>examplecluster</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_enable_logging_:_BucketName">BucketName</code></td>
<td><p>The name of an existing S3 bucket where the log files are to be
stored.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be in the same region as the cluster</p></li>
<li><p>The cluster must have read bucket and put object
permissions</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_enable_logging_:_S3KeyPrefix">S3KeyPrefix</code></td>
<td><p>The prefix applied to the log file names.</p>
<p>Constraints:</p>
<ul>
<li><p>Cannot exceed 512 characters</p></li>
<li><p>Cannot contain spaces( ), double quotes ("), single quotes ('), a
backslash (\), or control characters. The hexadecimal codes for invalid
characters are:</p>
<ul>
<li><p>x00 to x20</p></li>
<li><p>x22</p></li>
<li><p>x27</p></li>
<li><p>x5c</p></li>
<li><p>x7f or larger</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_enable_logging_:_LogDestinationType">LogDestinationType</code></td>
<td><p>The log destination type. An enum with possible values of
<code>s3</code> and <code>cloudwatch</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_enable_logging_:_LogExports">LogExports</code></td>
<td><p>The collection of exported log types. Possible values are
<code>connectionlog</code>, <code>useractivitylog</code>, and
<code>userlog</code>.</p></td>
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

    svc$enable_logging(
      ClusterIdentifier = "string",
      BucketName = "string",
      S3KeyPrefix = "string",
      LogDestinationType = "s3"|"cloudwatch",
      LogExports = list(
        "string"
      )
    )
