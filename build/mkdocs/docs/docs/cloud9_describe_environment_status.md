<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_describe_environment_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets status information for an Cloud9 development environment

### Description

Gets status information for an Cloud9 development environment.

### Usage

    cloud9_describe_environment_status(environmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_describe_environment_status_:_environmentId">environmentId</code></td>
<td><p>[required] The ID of the environment to get status information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "error"|"creating"|"connecting"|"ready"|"stopping"|"stopped"|"deleting",
      message = "string"
    )

### Request syntax

    svc$describe_environment_status(
      environmentId = "string"
    )

### Examples

    ## Not run: 
    # 
    svc$describe_environment_status(
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
    )

    ## End(Not run)
