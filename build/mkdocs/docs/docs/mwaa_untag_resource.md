<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes key-value tag pairs associated to your Amazon Managed Workflows for Apache Airflow (MWAA) environment

### Description

Removes key-value tag pairs associated to your Amazon Managed Workflows
for Apache Airflow (MWAA) environment. For example,
`"Environment": "Staging"`.

### Usage

    mwaa_untag_resource(ResourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon MWAA
environment. For example,
<code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The key-value tag pair you want to remove. For
example, <code>"Environment": "Staging"</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
