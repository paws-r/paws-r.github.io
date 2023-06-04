<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_swap_environment_cnam_es</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Swaps the CNAMEs of two environments

### Description

Swaps the CNAMEs of two environments.

### Usage

    elasticbeanstalk_swap_environment_cnam_es(SourceEnvironmentId,
      SourceEnvironmentName, DestinationEnvironmentId,
      DestinationEnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_swap_environment_cnam_es_:_SourceEnvironmentId">SourceEnvironmentId</code></td>
<td><p>The ID of the source environment.</p>
<p>Condition: You must specify at least the
<code>SourceEnvironmentID</code> or the
<code>SourceEnvironmentName</code>. You may also specify both. If you
specify the <code>SourceEnvironmentId</code>, you must specify the
<code>DestinationEnvironmentId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_swap_environment_cnam_es_:_SourceEnvironmentName">SourceEnvironmentName</code></td>
<td><p>The name of the source environment.</p>
<p>Condition: You must specify at least the
<code>SourceEnvironmentID</code> or the
<code>SourceEnvironmentName</code>. You may also specify both. If you
specify the <code>SourceEnvironmentName</code>, you must specify the
<code>DestinationEnvironmentName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_swap_environment_cnam_es_:_DestinationEnvironmentId">DestinationEnvironmentId</code></td>
<td><p>The ID of the destination environment.</p>
<p>Condition: You must specify at least the
<code>DestinationEnvironmentID</code> or the
<code>DestinationEnvironmentName</code>. You may also specify both. You
must specify the <code>SourceEnvironmentId</code> with the
<code>DestinationEnvironmentId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_swap_environment_cnam_es_:_DestinationEnvironmentName">DestinationEnvironmentName</code></td>
<td><p>The name of the destination environment.</p>
<p>Condition: You must specify at least the
<code>DestinationEnvironmentID</code> or the
<code>DestinationEnvironmentName</code>. You may also specify both. You
must specify the <code>SourceEnvironmentName</code> with the
<code>DestinationEnvironmentName</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$swap_environment_cnam_es(
      SourceEnvironmentId = "string",
      SourceEnvironmentName = "string",
      DestinationEnvironmentId = "string",
      DestinationEnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following operation swaps the assigned subdomains of two
    # environments:
    svc$swap_environment_cnam_es(
      DestinationEnvironmentName = "my-env-green",
      SourceEnvironmentName = "my-env-blue"
    )

    ## End(Not run)
