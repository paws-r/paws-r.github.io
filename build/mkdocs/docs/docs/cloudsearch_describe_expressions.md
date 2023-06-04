<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_expressions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the expressions configured for the search domain

### Description

Gets the expressions configured for the search domain. Can be limited to
specific expressions by name. By default, shows all expressions and
includes any pending changes to the configuration. Set the `Deployed`
option to `true` to show the active configuration and exclude pending
changes. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
target="_blank">Configuring Expressions</a> in the *Amazon CloudSearch
Developer Guide*.

### Usage

    cloudsearch_describe_expressions(DomainName, ExpressionNames, Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_expressions_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_expressions_:_ExpressionNames">ExpressionNames</code></td>
<td><p>Limits the <code>describe_expressions</code> response to the
specified expressions. If not specified, all expressions are
shown.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudsearch_describe_expressions_:_Deployed">Deployed</code></td>
<td><p>Whether to display the deployed configuration (<code>true</code>)
or include any pending changes (<code>false</code>). Defaults to
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Expressions = list(
        list(
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
    )

### Request syntax

    svc$describe_expressions(
      DomainName = "string",
      ExpressionNames = list(
        "string"
      ),
      Deployed = TRUE|FALSE
    )
