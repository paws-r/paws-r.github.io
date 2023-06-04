<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a dataset group, which holds a collection of related datasets

### Description

Creates a dataset group, which holds a collection of related datasets.
You can add datasets to the dataset group when you create the dataset
group, or later by using the `update_dataset_group` operation.

After creating a dataset group and adding datasets, you use the dataset
group when you create a predictor. For more information, see [Dataset
groups](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

To get a list of all your datasets groups, use the `list_dataset_groups`
operation.

The `Status` of a dataset group must be `ACTIVE` before you can use the
dataset group to create a predictor. To get the status, use the
`describe_dataset_group` operation.

### Usage

    forecastservice_create_dataset_group(DatasetGroupName, Domain,
      DatasetArns, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_group_:_DatasetGroupName">DatasetGroupName</code></td>
<td><p>[required] A name for the dataset group.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_group_:_Domain">Domain</code></td>
<td><p>[required] The domain associated with the dataset group. When you
add a dataset to a dataset group, this value and the value specified for
the <code>Domain</code> parameter of the <code>create_dataset</code>
operation must match.</p>
<p>The <code>Domain</code> and <code>DatasetType</code> that you choose
determine the fields that must be present in training data that you
import to a dataset. For example, if you choose the <code>RETAIL</code>
domain and <code>TARGET_TIME_SERIES</code> as the
<code>DatasetType</code>, Amazon Forecast requires that
<code>item_id</code>, <code>timestamp</code>, and <code>demand</code>
fields are present in your data. For more information, see <a
href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Dataset
groups</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_group_:_DatasetArns">DatasetArns</code></td>
<td><p>An array of Amazon Resource Names (ARNs) of the datasets that you
want to include in the dataset group.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_group_:_Tags">Tags</code></td>
<td><p>The optional metadata that you apply to the dataset group to help
you categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50.</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8.</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for keys as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys with this prefix.
Values can have this prefix. If a tag value has <code>aws</code> as its
prefix but the key does not, then Forecast considers it to be a user tag
and will count against the limit of 50 tags. Tags with only the key
prefix of <code>aws</code> do not count against your tags per resource
limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetGroupArn = "string"
    )

### Request syntax

    svc$create_dataset_group(
      DatasetGroupName = "string",
      Domain = "RETAIL"|"CUSTOM"|"INVENTORY_PLANNING"|"EC2_CAPACITY"|"WORK_FORCE"|"WEB_TRAFFIC"|"METRICS",
      DatasetArns = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
