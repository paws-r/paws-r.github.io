<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to delete a domain

### Description

Used to delete a domain. If you onboarded with IAM mode, you will need
to delete your domain to onboard again using IAM Identity Center. Use
with caution. All of the members of the domain will lose access to their
EFS volume, including data, notebooks, and other artifacts.

### Usage

    sagemaker_delete_domain(DomainId, RetentionPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_domain_:_DomainId">DomainId</code></td>
<td><p>[required] The domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_delete_domain_:_RetentionPolicy">RetentionPolicy</code></td>
<td><p>The retention policy for this domain, which specifies whether
resources will be retained after the Domain is deleted. By default, all
resources are retained (not automatically deleted).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_domain(
      DomainId = "string",
      RetentionPolicy = list(
        HomeEfsFileSystem = "Retain"|"Delete"
      )
    )
