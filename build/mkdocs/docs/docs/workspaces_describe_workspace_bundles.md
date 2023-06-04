<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspace_bundles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes the available WorkSpace bundles

### Description

Retrieves a list that describes the available WorkSpace bundles.

You can filter the results using either bundle ID or owner, but not
both.

### Usage

    workspaces_describe_workspace_bundles(BundleIds, Owner, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_bundles_:_BundleIds">BundleIds</code></td>
<td><p>The identifiers of the bundles. You cannot combine this parameter
with any other filter.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspace_bundles_:_Owner">Owner</code></td>
<td><p>The owner of the bundles. You cannot combine this parameter with
any other filter.</p>
<p>To describe the bundles provided by Amazon Web Services, specify
<code>AMAZON</code>. To describe the bundles that belong to your
account, don't specify a value.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_bundles_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. (You received this token
from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Bundles = list(
        list(
          BundleId = "string",
          Name = "string",
          Owner = "string",
          Description = "string",
          ImageId = "string",
          RootStorage = list(
            Capacity = "string"
          ),
          UserStorage = list(
            Capacity = "string"
          ),
          ComputeType = list(
            Name = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          State = "AVAILABLE"|"PENDING"|"ERROR",
          BundleType = "REGULAR"|"STANDBY"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_workspace_bundles(
      BundleIds = list(
        "string"
      ),
      Owner = "string",
      NextToken = "string"
    )
