<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_resume_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resumes a stopped monitor resource

### Description

Resumes a stopped monitor resource.

### Usage

    forecastservice_resume_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_resume_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the monitor resource
to resume.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$resume_resource(
      ResourceArn = "string"
    )
