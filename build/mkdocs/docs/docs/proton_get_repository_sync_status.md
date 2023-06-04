<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_repository_sync_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the sync status of a repository used for Proton template sync

### Description

Get the sync status of a repository used for Proton template sync. For
more information about template sync, see .

A repository sync status isn't tied to the Proton Repository resource
(or any other Proton resource). Therefore, tags on an Proton Repository
resource have no effect on this action. Specifically, you can't use
these tags to control access to this action using Attribute-based access
control (ABAC).

For more information about ABAC, see
[ABAC](https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags)
in the *Proton User Guide*.

### Usage

    proton_get_repository_sync_status(branch, repositoryName,
      repositoryProvider, syncType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_get_repository_sync_status_:_branch">branch</code></td>
<td><p>[required] The repository branch.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_repository_sync_status_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository name.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_get_repository_sync_status_:_repositoryProvider">repositoryProvider</code></td>
<td><p>[required] The repository provider.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_repository_sync_status_:_syncType">syncType</code></td>
<td><p>[required] The repository sync type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      latestSync = list(
        events = list(
          list(
            event = "string",
            externalId = "string",
            time = as.POSIXct(
              "2015-01-01"
            ),
            type = "string"
          )
        ),
        startedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "INITIATED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"QUEUED"
      )
    )

### Request syntax

    svc$get_repository_sync_status(
      branch = "string",
      repositoryName = "string",
      repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
      syncType = "TEMPLATE_SYNC"|"SERVICE_SYNC"
    )
