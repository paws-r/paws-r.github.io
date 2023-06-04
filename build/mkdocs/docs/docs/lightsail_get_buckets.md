<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_buckets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about one or more Amazon Lightsail buckets

### Description

Returns information about one or more Amazon Lightsail buckets. The
information returned includes the synchronization status of the Amazon
Simple Storage Service (Amazon S3) account-level block public access
feature for your Lightsail buckets.

For more information about buckets, see Buckets in Amazon Lightsail in
the *Amazon Lightsail Developer Guide*.

### Usage

    lightsail_get_buckets(bucketName, pageToken, includeConnectedResources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_get_buckets_:_bucketName">bucketName</code></td>
<td><p>The name of the bucket for which to return information.</p>
<p>When omitted, the response includes all of your buckets in the Amazon
Web Services Region where the request is made.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_get_buckets_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial <code>get_buckets</code>
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_get_buckets_:_includeConnectedResources">includeConnectedResources</code></td>
<td><p>A Boolean value that indicates whether to include Lightsail
instances that were given access to the bucket using the
<code>set_resource_access_for_bucket</code> action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      buckets = list(
        list(
          resourceType = "string",
          accessRules = list(
            getObject = "public"|"private",
            allowPublicOverrides = TRUE|FALSE
          ),
          arn = "string",
          bundleId = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          url = "string",
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          name = "string",
          supportCode = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          objectVersioning = "string",
          ableToUpdateBundle = TRUE|FALSE,
          readonlyAccessAccounts = list(
            "string"
          ),
          resourcesReceivingAccess = list(
            list(
              name = "string",
              resourceType = "string"
            )
          ),
          state = list(
            code = "string",
            message = "string"
          ),
          accessLogConfig = list(
            enabled = TRUE|FALSE,
            destination = "string",
            prefix = "string"
          )
        )
      ),
      nextPageToken = "string",
      accountLevelBpaSync = list(
        status = "InSync"|"Failed"|"NeverSynced"|"Defaulted",
        lastSyncedAt = as.POSIXct(
          "2015-01-01"
        ),
        message = "DEFAULTED_FOR_SLR_MISSING"|"SYNC_ON_HOLD"|"DEFAULTED_FOR_SLR_MISSING_ON_HOLD"|"Unknown",
        bpaImpactsLightsail = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_buckets(
      bucketName = "string",
      pageToken = "string",
      includeConnectedResources = TRUE|FALSE
    )
