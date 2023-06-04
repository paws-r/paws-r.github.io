<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_create_log_pattern</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an log pattern to a LogPatternSet

### Description

Adds an log pattern to a `LogPatternSet`.

### Usage

    applicationinsights_create_log_pattern(ResourceGroupName,
      PatternSetName, PatternName, Pattern, Rank)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_create_log_pattern_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_log_pattern_:_PatternSetName">PatternSetName</code></td>
<td><p>[required] The name of the log pattern set.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_create_log_pattern_:_PatternName">PatternName</code></td>
<td><p>[required] The name of the log pattern.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_log_pattern_:_Pattern">Pattern</code></td>
<td><p>[required] The log pattern. The pattern must be DFA compatible.
Patterns that utilize forward lookahead or backreference constructions
are not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_create_log_pattern_:_Rank">Rank</code></td>
<td><p>[required] Rank of the log pattern. Must be a value between
<code>1</code> and <code style="white-space: pre;">⁠1,000,000⁠</code>. The
patterns are sorted by rank, so we recommend that you set your highest
priority patterns with the lowest rank. A pattern of rank <code>1</code>
will be the first to get matched to a log line. A pattern of rank <code
style="white-space: pre;">⁠1,000,000⁠</code> will be last to get matched.
When you configure custom log patterns from the console, a
<code>Low</code> severity pattern translates to a <code
style="white-space: pre;">⁠750,000⁠</code> rank. A <code>Medium</code>
severity pattern translates to a <code
style="white-space: pre;">⁠500,000⁠</code> rank. And a <code>High</code>
severity pattern translates to a <code
style="white-space: pre;">⁠250,000⁠</code> rank. Rank values less than
<code>1</code> or greater than <code
style="white-space: pre;">⁠1,000,000⁠</code> are reserved for AWS-provided
patterns.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LogPattern = list(
        PatternSetName = "string",
        PatternName = "string",
        Pattern = "string",
        Rank = 123
      ),
      ResourceGroupName = "string"
    )

### Request syntax

    svc$create_log_pattern(
      ResourceGroupName = "string",
      PatternSetName = "string",
      PatternName = "string",
      Pattern = "string",
      Rank = 123
    )
