<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_delete_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Cloud9 development environment

### Description

Deletes an Cloud9 development environment. If an Amazon EC2 instance is
connected to the environment, also terminates the instance.

### Usage

    cloud9_delete_environment(environmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_delete_environment_:_environmentId">environmentId</code></td>
<td><p>[required] The ID of the environment to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_environment(
      environmentId = "string"
    )

### Examples

    ## Not run: 
    # 
    svc$delete_environment(
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
    )

    ## End(Not run)
