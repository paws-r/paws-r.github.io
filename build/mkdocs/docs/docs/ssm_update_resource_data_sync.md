<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_resource_data_sync</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a resource data sync

### Description

Update a resource data sync. After you create a resource data sync for a
Region, you can't change the account options for that sync. For example,
if you create a sync in the us-east-2 (Ohio) Region and you choose the
`⁠Include only the current account⁠` option, you can't edit that sync
later and choose the
`⁠Include all accounts from my Organizations configuration⁠` option.
Instead, you must delete the first resource data sync, and create a new
one.

This API operation only supports a resource data sync that was created
with a SyncFromSource `SyncType`.

### Usage

    ssm_update_resource_data_sync(SyncName, SyncType, SyncSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_resource_data_sync_:_SyncName">SyncName</code></td>
<td><p>[required] The name of the resource data sync you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_resource_data_sync_:_SyncType">SyncType</code></td>
<td><p>[required] The type of resource data sync. The supported
<code>SyncType</code> is SyncFromSource.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_resource_data_sync_:_SyncSource">SyncSource</code></td>
<td><p>[required] Specify information about the data sources to
synchronize.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_resource_data_sync(
      SyncName = "string",
      SyncType = "string",
      SyncSource = list(
        SourceType = "string",
        AwsOrganizationsSource = list(
          OrganizationSourceType = "string",
          OrganizationalUnits = list(
            list(
              OrganizationalUnitId = "string"
            )
          )
        ),
        SourceRegions = list(
          "string"
        ),
        IncludeFutureRegions = TRUE|FALSE,
        EnableAllOpsDataSources = TRUE|FALSE
      )
    )
