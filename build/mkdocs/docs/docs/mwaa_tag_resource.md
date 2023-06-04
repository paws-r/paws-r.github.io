<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates key-value tag pairs to your Amazon Managed Workflows for Apache Airflow (MWAA) environment

### Description

Associates key-value tag pairs to your Amazon Managed Workflows for
Apache Airflow (MWAA) environment.

### Usage

    mwaa_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon MWAA
environment. For example,
<code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The key-value tag pairs you want to associate to your
environment. For example, <code>"Environment": "Staging"</code>. For
more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
