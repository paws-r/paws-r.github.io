<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_create_workspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new AMP workspace

### Description

Creates a new AMP workspace.

### Usage

    prometheusservice_create_workspace(alias, clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_create_workspace_:_alias">alias</code></td>
<td><p>An optional user-assigned alias for this workspace. This alias is
for user reference and does not need to be unique.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_create_workspace_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_create_workspace_:_tags">tags</code></td>
<td><p>Optional, user-provided tags for this workspace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      status = list(
        statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"
      ),
      tags = list(
        "string"
      ),
      workspaceId = "string"
    )

### Request syntax

    svc$create_workspace(
      alias = "string",
      clientToken = "string",
      tags = list(
        "string"
      )
    )
