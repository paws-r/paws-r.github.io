<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_update_datasource_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a data source packages for the behavior graph

### Description

Starts a data source packages for the behavior graph.

### Usage

    detective_update_datasource_packages(GraphArn, DatasourcePackages)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_update_datasource_packages_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_update_datasource_packages_:_DatasourcePackages">DatasourcePackages</code></td>
<td><p>[required] The data source package start for the behavior
graph.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_datasource_packages(
      GraphArn = "string",
      DatasourcePackages = list(
        "DETECTIVE_CORE"|"EKS_AUDIT"|"ASFF_SECURITYHUB_FINDING"
      )
    )
