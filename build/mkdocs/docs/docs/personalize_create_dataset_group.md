<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an empty dataset group

### Description

Creates an empty dataset group. A dataset group is a container for
Amazon Personalize resources. A dataset group can contain at most three
datasets, one for each type of dataset:

-   Interactions

-   Items

-   Users

A dataset group can be a Domain dataset group, where you specify a
domain and use pre-configured resources like recommenders, or a Custom
dataset group, where you use custom resources, such as a solution with a
solution version, that you deploy with a campaign. If you start with a
Domain dataset group, you can still add custom resources such as
solutions and solution versions trained with recipes for custom use
cases and deployed with campaigns.

A dataset group can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   DELETE PENDING

To get the status of the dataset group, call `describe_dataset_group`.
If the status shows as CREATE FAILED, the response includes a
`failureReason` key, which describes why the creation failed.

You must wait until the `status` of the dataset group is `ACTIVE` before
adding a dataset to the group.

You can specify an Key Management Service (KMS) key to encrypt the
datasets in the group. If you specify a KMS key, you must also include
an Identity and Access Management (IAM) role that has permission to
access the key.

**APIs that require a dataset group ARN in the request**

-   `create_dataset`

-   `create_event_tracker`

-   `create_solution`

**Related APIs**

-   `list_dataset_groups`

-   `describe_dataset_group`

-   `delete_dataset_group`

### Usage

    personalize_create_dataset_group(name, roleArn, kmsKeyArn, domain, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_dataset_group_:_name">name</code></td>
<td><p>[required] The name for the new dataset group.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_group_:_roleArn">roleArn</code></td>
<td><p>The ARN of the Identity and Access Management (IAM) role that has
permissions to access the Key Management Service (KMS) key. Supplying an
IAM role is only valid when also specifying a KMS key.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_group_:_kmsKeyArn">kmsKeyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a Key Management Service (KMS)
key used to encrypt the datasets.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_group_:_domain">domain</code></td>
<td><p>The domain of the dataset group. Specify a domain to create a
Domain dataset group. The domain you specify determines the default
schemas for datasets and the use cases available for recommenders. If
you don't specify a domain, you create a Custom dataset group with
solution versions that you deploy with a campaign.</p></td>
</tr>
<tr class="odd">
<td><code id="personalize_create_dataset_group_:_tags">tags</code></td>
<td><p>A list of tags to apply to the dataset group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetGroupArn = "string",
      domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
    )

### Request syntax

    svc$create_dataset_group(
      name = "string",
      roleArn = "string",
      kmsKeyArn = "string",
      domain = "ECOMMERCE"|"VIDEO_ON_DEMAND",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
