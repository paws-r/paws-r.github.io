<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Forecast dataset

### Description

Creates an Amazon Forecast dataset. The information about the dataset
that you provide helps Forecast understand how to consume the data for
model training. This includes the following:

-   *DataFrequency* - How frequently your historical time-series data is
    collected.

-   *Domain* and *DatasetType* - Each dataset has an associated dataset
    domain and a type within the domain. Amazon Forecast provides a list
    of predefined domains and types within each domain. For each unique
    dataset domain and type within the domain, Amazon Forecast requires
    your data to include a minimum set of predefined fields.

-   *Schema* - A schema specifies the fields in the dataset, including
    the field name and data type.

After creating a dataset, you import your training data into it and add
the dataset to a dataset group. You use the dataset group to create a
predictor. For more information, see [Importing
datasets](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

To get a list of all your datasets, use the `list_datasets` operation.

For example Forecast datasets, see the [Amazon Forecast Sample GitHub
repository](https://github.com/aws-samples/amazon-forecast-samples).

The `Status` of a dataset must be `ACTIVE` before you can import
training data. Use the `describe_dataset` operation to get the status.

### Usage

    forecastservice_create_dataset(DatasetName, Domain, DatasetType,
      DataFrequency, Schema, EncryptionConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] A name for the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_:_Domain">Domain</code></td>
<td><p>[required] The domain associated with the dataset. When you add a
dataset to a dataset group, this value and the value specified for the
<code>Domain</code> parameter of the <code>create_dataset_group</code>
operation must match.</p>
<p>The <code>Domain</code> and <code>DatasetType</code> that you choose
determine the fields that must be present in the training data that you
import to the dataset. For example, if you choose the
<code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
<code>DatasetType</code>, Amazon Forecast requires <code>item_id</code>,
<code>timestamp</code>, and <code>demand</code> fields to be present in
your data. For more information, see <a
href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Importing
datasets</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_:_DatasetType">DatasetType</code></td>
<td><p>[required] The dataset type. Valid values depend on the chosen
<code>Domain</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_:_DataFrequency">DataFrequency</code></td>
<td><p>The frequency of data collection. This parameter is required for
RELATED_TIME_SERIES datasets.</p>
<p>Valid intervals are an integer followed by Y (Year), M (Month), W
(Week), D (Day), H (Hour), and min (Minute). For example, "1D" indicates
every day and "15min" indicates every 15 minutes. You cannot specify a
value that would overlap with the next larger frequency. That means, for
example, you cannot specify a frequency of 60 minutes, because that is
equivalent to 1 hour. The valid values for each frequency are the
following:</p>
<ul>
<li><p>Minute - 1-59</p></li>
<li><p>Hour - 1-23</p></li>
<li><p>Day - 1-6</p></li>
<li><p>Week - 1-4</p></li>
<li><p>Month - 1-11</p></li>
<li><p>Year - 1</p></li>
</ul>
<p>Thus, if you want every other week forecasts, specify "2W". Or, if
you want quarterly forecasts, you specify "3M".</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_:_Schema">Schema</code></td>
<td><p>[required] The schema for the dataset. The schema attributes and
their order must match the fields in your data. The dataset
<code>Domain</code> and <code>DatasetType</code> that you choose
determine the minimum required fields in your training data. For
information about the required fields for a specific dataset domain and
type, see <a
href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-domains-ds-types.html">Dataset
Domains and Dataset Types</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_:_EncryptionConfig">EncryptionConfig</code></td>
<td><p>An Key Management Service (KMS) key and the Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.</p></td>
</tr>
<tr class="odd">
<td><code id="forecastservice_create_dataset_:_Tags">Tags</code></td>
<td><p>The optional metadata that you apply to the dataset to help you
categorize and organize them. Each tag consists of a key and an optional
value, both of which you define.</p>
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
      DatasetArn = "string"
    )

### Request syntax

    svc$create_dataset(
      DatasetName = "string",
      Domain = "RETAIL"|"CUSTOM"|"INVENTORY_PLANNING"|"EC2_CAPACITY"|"WORK_FORCE"|"WEB_TRAFFIC"|"METRICS",
      DatasetType = "TARGET_TIME_SERIES"|"RELATED_TIME_SERIES"|"ITEM_METADATA",
      DataFrequency = "string",
      Schema = list(
        Attributes = list(
          list(
            AttributeName = "string",
            AttributeType = "string"|"integer"|"float"|"timestamp"|"geolocation"
          )
        )
      ),
      EncryptionConfig = list(
        RoleArn = "string",
        KMSKeyArn = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
