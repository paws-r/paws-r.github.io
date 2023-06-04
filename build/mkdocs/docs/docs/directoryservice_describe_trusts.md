<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_trusts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains information about the trust relationships for this account

### Description

Obtains information about the trust relationships for this account.

If no input parameters are provided, such as DirectoryId or TrustIds,
this request describes all the trust relationships belonging to the
account.

### Usage

    directoryservice_describe_trusts(DirectoryId, TrustIds, NextToken,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_trusts_:_DirectoryId">DirectoryId</code></td>
<td><p>The Directory ID of the Amazon Web Services directory that is a
part of the requested trust relationship.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_trusts_:_TrustIds">TrustIds</code></td>
<td><p>A list of identifiers of the trust relationships for which to
obtain the information. If this member is null, all trust relationships
that belong to the current account are returned.</p>
<p>An empty list results in an <code>InvalidParameterException</code>
being thrown.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_trusts_:_NextToken">NextToken</code></td>
<td><p>The <em>DescribeTrustsResult.NextToken</em> value from a previous
call to <code>describe_trusts</code>. Pass null if this is the first
call.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_trusts_:_Limit">Limit</code></td>
<td><p>The maximum number of objects to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Trusts = list(
        list(
          DirectoryId = "string",
          TrustId = "string",
          RemoteDomainName = "string",
          TrustType = "Forest"|"External",
          TrustDirection = "One-Way: Outgoing"|"One-Way: Incoming"|"Two-Way",
          TrustState = "Creating"|"Created"|"Verifying"|"VerifyFailed"|"Verified"|"Updating"|"UpdateFailed"|"Updated"|"Deleting"|"Deleted"|"Failed",
          CreatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          StateLastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          TrustStateReason = "string",
          SelectiveAuth = "Enabled"|"Disabled"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_trusts(
      DirectoryId = "string",
      TrustIds = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
