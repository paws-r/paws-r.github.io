<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_define_expression</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures an Expression for the search domain

### Description

Configures an `Expression` for the search domain. Used to create new
expressions and modify existing ones. If the expression exists, the new
configuration replaces the old one. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
target="_blank">Configuring Expressions</a> in the *Amazon CloudSearch
Developer Guide*.

### Usage

    cloudsearch_define_expression(DomainName, Expression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_define_expression_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_define_expression_:_Expression">Expression</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Expression = list(
        Options = list(
          ExpressionName = "string",
          ExpressionValue = "string"
        ),
        Status = list(
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateVersion = 123,
          State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
          PendingDeletion = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$define_expression(
      DomainName = "string",
      Expression = list(
        ExpressionName = "string",
        ExpressionValue = "string"
      )
    )
