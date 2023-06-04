<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_service_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a self-service action

### Description

Updates a self-service action.

### Usage

    servicecatalog_update_service_action(Id, Name, Definition, Description,
      AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicecatalog_update_service_action_:_Id">Id</code></td>
<td><p>[required] The self-service action identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_service_action_:_Name">Name</code></td>
<td><p>The self-service action name.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_service_action_:_Definition">Definition</code></td>
<td><p>A map that defines the self-service action.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_service_action_:_Description">Description</code></td>
<td><p>The self-service action description.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_service_action_:_AcceptLanguage">AcceptLanguage</code></td>
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

    svc$update_service_action(
      Id = "string",
      Name = "string",
      Definition = list(
        "string"
      ),
      Description = "string",
      AcceptLanguage = "string"
    )
