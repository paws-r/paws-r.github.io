<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_constraint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified constraint

### Description

Gets information about the specified constraint.

### Usage

    servicecatalog_describe_constraint(AcceptLanguage, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_constraint_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_describe_constraint_:_Id">Id</code></td>
<td><p>[required] The identifier of the constraint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConstraintDetail = list(
        ConstraintId = "string",
        Type = "string",
        Description = "string",
        Owner = "string",
        ProductId = "string",
        PortfolioId = "string"
      ),
      ConstraintParameters = "string",
      Status = "AVAILABLE"|"CREATING"|"FAILED"
    )

### Request syntax

    svc$describe_constraint(
      AcceptLanguage = "string",
      Id = "string"
    )
