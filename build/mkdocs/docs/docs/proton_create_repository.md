<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create and register a link to a repository

### Description

Create and register a link to a repository. Proton uses the link to
repeatedly access the repository, to either push to it (self-managed
provisioning) or pull from it (template sync). You can share a linked
repository across multiple resources (like environments using
self-managed provisioning, or synced templates). When you create a
repository link, Proton creates a [service-linked
role](https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html)
for you.

For more information, see [Self-managed
provisioning](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self),
[Template
bundles](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles),
and [Template sync
configurations](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
in the *Proton User Guide*.

### Usage

    proton_create_repository(connectionArn, encryptionKey, name, provider,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_repository_:_connectionArn">connectionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of your AWS CodeStar
connection that connects Proton to your repository provider account. For
more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html">Setting
up for Proton</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_repository_:_encryptionKey">encryptionKey</code></td>
<td><p>The ARN of your customer Amazon Web Services Key Management
Service (Amazon Web Services KMS) key.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_repository_:_name">name</code></td>
<td><p>[required] The repository name (for example,
<code>myrepos/myrepo</code>).</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_repository_:_provider">provider</code></td>
<td><p>[required] The repository provider.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_repository_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton repository. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repository = list(
        arn = "string",
        connectionArn = "string",
        encryptionKey = "string",
        name = "string",
        provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
      )
    )

### Request syntax

    svc$create_repository(
      connectionArn = "string",
      encryptionKey = "string",
      name = "string",
      provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
