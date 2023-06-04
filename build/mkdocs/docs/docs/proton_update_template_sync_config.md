<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_template_sync_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update template sync configuration parameters, except for the templateName and templateType

### Description

Update template sync configuration parameters, except for the
`templateName` and `templateType`. Repository details (branch, name, and
provider) should be of a linked repository. A linked repository is a
repository that has been registered with Proton. For more information,
see `create_repository`.

### Usage

    proton_update_template_sync_config(branch, repositoryName,
      repositoryProvider, subdirectory, templateName, templateType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_template_sync_config_:_branch">branch</code></td>
<td><p>[required] The repository branch for your template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_template_sync_config_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository name (for example,
<code>myrepos/myrepo</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_template_sync_config_:_repositoryProvider">repositoryProvider</code></td>
<td><p>[required] The repository provider.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_template_sync_config_:_subdirectory">subdirectory</code></td>
<td><p>A subdirectory path to your template bundle version. When
included, limits the template bundle search to this repository
directory.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_template_sync_config_:_templateName">templateName</code></td>
<td><p>[required] The synced template name.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_template_sync_config_:_templateType">templateType</code></td>
<td><p>[required] The synced template type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      templateSyncConfig = list(
        branch = "string",
        repositoryName = "string",
        repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
        subdirectory = "string",
        templateName = "string",
        templateType = "ENVIRONMENT"|"SERVICE"
      )
    )

### Request syntax

    svc$update_template_sync_config(
      branch = "string",
      repositoryName = "string",
      repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
      subdirectory = "string",
      templateName = "string",
      templateType = "ENVIRONMENT"|"SERVICE"
    )
