<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_public_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all public keys whose private keys were used to sign the digest files within the specified time range

### Description

Returns all public keys whose private keys were used to sign the digest
files within the specified time range. The public key is needed to
validate digest files that were signed with its corresponding private
key.

CloudTrail uses different private and public key pairs per region. Each
digest file is signed with a private key unique to its region. When you
validate a digest file from a specific region, you must look in the same
region for its corresponding public key.

### Usage

    cloudtrail_list_public_keys(StartTime, EndTime, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_list_public_keys_:_StartTime">StartTime</code></td>
<td><p>Optionally specifies, in UTC, the start of the time range to look
up public keys for CloudTrail digest files. If not specified, the
current time is used, and the current public key is returned.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_list_public_keys_:_EndTime">EndTime</code></td>
<td><p>Optionally specifies, in UTC, the end of the time range to look
up public keys for CloudTrail digest files. If not specified, the
current time is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_list_public_keys_:_NextToken">NextToken</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicKeyList = list(
        list(
          Value = raw,
          ValidityStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ValidityEndTime = as.POSIXct(
            "2015-01-01"
          ),
          Fingerprint = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_public_keys(
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string"
    )
