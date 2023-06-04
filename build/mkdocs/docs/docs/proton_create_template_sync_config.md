<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_template_sync_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set up a template to create new template versions automatically by tracking a linked repository

### Description

Set up a template to create new template versions automatically by
tracking a linked repository. A linked repository is a repository that
has been registered with Proton. For more information, see
`create_repository`.

When a commit is pushed to your linked repository, Proton checks for
changes to your repository template bundles. If it detects a template
bundle change, a new major or minor version of its template is created,
if the version doesn’t already exist. For more information, see
[Template sync
configurations](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
in the *Proton User Guide*.

### Usage

    proton_create_template_sync_config(branch, repositoryName,
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
id="proton_create_template_sync_config_:_branch">branch</code></td>
<td><p>[required] The repository branch for your template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_template_sync_config_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository name (for example,
<code>myrepos/myrepo</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_template_sync_config_:_repositoryProvider">repositoryProvider</code></td>
<td><p>[required] The provider type for your repository.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_template_sync_config_:_subdirectory">subdirectory</code></td>
<td><p>A repository subdirectory path to your template bundle directory.
When included, Proton limits the template bundle search to this
repository directory.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_template_sync_config_:_templateName">templateName</code></td>
<td><p>[required] The name of your registered template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_template_sync_config_:_templateType">templateType</code></td>
<td><p>[required] The type of the registered template.</p></td>
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

    svc$create_template_sync_config(
      branch = "string",
      repositoryName = "string",
      repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
      subdirectory = "string",
      templateName = "string",
      templateType = "ENVIRONMENT"|"SERVICE"
    )
