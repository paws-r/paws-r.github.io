<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an empty dataset and adds it to the specified dataset group

### Description

Creates an empty dataset and adds it to the specified dataset group. Use
`create_dataset_import_job` to import your training data to a dataset.

There are three types of datasets:

-   Interactions

-   Items

-   Users

Each dataset type has an associated schema with required field types.
Only the `Interactions` dataset is required in order to train a model
(also referred to as creating a solution).

A dataset can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   DELETE PENDING \\ DELETE IN\_PROGRESS

To get the status of the dataset, call `describe_dataset`.

**Related APIs**

-   `create_dataset_group`

-   `list_datasets`

-   `describe_dataset`

-   `delete_dataset`

### Usage

    personalize_create_dataset(name, schemaArn, datasetGroupArn,
      datasetType, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_dataset_:_name">name</code></td>
<td><p>[required] The name for the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_:_schemaArn">schemaArn</code></td>
<td><p>[required] The ARN of the schema to associate with the dataset.
The schema defines the dataset fields.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset group to
add the dataset to.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_:_datasetType">datasetType</code></td>
<td><p>[required] The type of dataset.</p>
<p>One of the following (case insensitive) values:</p>
<ul>
<li><p>Interactions</p></li>
<li><p>Items</p></li>
<li><p>Users</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="personalize_create_dataset_:_tags">tags</code></td>
<td><p>A list of tags to apply to the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetArn = "string"
    )

### Request syntax

    svc$create_dataset(
      name = "string",
      schemaArn = "string",
      datasetGroupArn = "string",
      datasetType = "string",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
