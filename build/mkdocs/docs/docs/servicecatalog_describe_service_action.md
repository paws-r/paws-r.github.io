<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_service_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a self-service action

### Description

Describes a self-service action.

### Usage

    servicecatalog_describe_service_action(Id, AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_service_action_:_Id">Id</code></td>
<td><p>[required] The self-service action identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_service_action_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceActionDetail = list(
        ServiceActionSummary = list(
          Id = "string",
          Name = "string",
          Description = "string",
          DefinitionType = "SSM_AUTOMATION"
        ),
        Definition = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_service_action(
      Id = "string",
      AcceptLanguage = "string"
    )
