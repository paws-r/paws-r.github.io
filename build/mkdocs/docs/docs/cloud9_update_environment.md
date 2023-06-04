<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_update_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the settings of an existing Cloud9 development environment

### Description

Changes the settings of an existing Cloud9 development environment.

### Usage

    cloud9_update_environment(environmentId, name, description,
      managedCredentialsAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_update_environment_:_environmentId">environmentId</code></td>
<td><p>[required] The ID of the environment to change settings.</p></td>
</tr>
<tr class="even">
<td><code id="cloud9_update_environment_:_name">name</code></td>
<td><p>A replacement name for the environment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_update_environment_:_description">description</code></td>
<td><p>Any new or replacement description for the environment.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_update_environment_:_managedCredentialsAction">managedCredentialsAction</code></td>
<td><p>Allows the environment owner to turn on or turn off the Amazon
Web Services managed temporary credentials for an Cloud9 environment by
using one of the following values:</p>
<ul>
<li><p><code>ENABLE</code></p></li>
<li><p><code>DISABLE</code></p></li>
</ul>
<p>Only the environment owner can change the status of managed temporary
credentials. An <code>AccessDeniedException</code> is thrown if an
attempt to turn on or turn off managed temporary credentials is made by
an account that's not the environment owner.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_environment(
      environmentId = "string",
      name = "string",
      description = "string",
      managedCredentialsAction = "ENABLE"|"DISABLE"
    )

### Examples

    ## Not run: 
    # 
    svc$update_environment(
      name = "my-changed-demo-environment",
      description = "This is my changed demonstration environment.",
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
    )

    ## End(Not run)
