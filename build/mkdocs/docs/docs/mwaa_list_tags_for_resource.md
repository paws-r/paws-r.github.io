<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the key-value tag pairs associated to the Amazon Managed Workflows for Apache Airflow (MWAA) environment

### Description

Lists the key-value tag pairs associated to the Amazon Managed Workflows
for Apache Airflow (MWAA) environment. For example,
`"Environment": "Staging"`.

### Usage

    mwaa_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mwaa_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon MWAA
environment. For example,
<code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
