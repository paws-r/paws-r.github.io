<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_projects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of build project names, with each build project name representing a single build project

### Description

Gets a list of build project names, with each build project name
representing a single build project.

### Usage

    codebuild_list_projects(sortBy, sortOrder, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_list_projects_:_sortBy">sortBy</code></td>
<td><p>The criterion to be used to list build project names. Valid
values include:</p>
<ul>
<li><p><code>CREATED_TIME</code>: List based on when each build project
was created.</p></li>
<li><p><code>LAST_MODIFIED_TIME</code>: List based on when information
about each build project was last changed.</p></li>
<li><p><code>NAME</code>: List based on each build project's
name.</p></li>
</ul>
<p>Use <code>sortOrder</code> to specify in what order to list the build
project names based on the preceding criteria.</p></td>
</tr>
<tr class="even">
<td><code id="codebuild_list_projects_:_sortOrder">sortOrder</code></td>
<td><p>The order in which to list build projects. Valid values
include:</p>
<ul>
<li><p><code>ASCENDING</code>: List in ascending order.</p></li>
<li><p><code>DESCENDING</code>: List in descending order.</p></li>
</ul>
<p>Use <code>sortBy</code> to specify the criterion to be used to list
build project names.</p></td>
</tr>
<tr class="odd">
<td><code id="codebuild_list_projects_:_nextToken">nextToken</code></td>
<td><p>During a previous call, if there are more than 100 items in the
list, only the first 100 items are returned, along with a unique string
called a <em>nextToken</em>. To get the next batch of items in the list,
call this operation again, adding the next token to the call. To get all
of the items in the list, keep calling this operation with each
subsequent next token that is returned, until no more next tokens are
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      projects = list(
        "string"
      )
    )

### Request syntax

    svc$list_projects(
      sortBy = "NAME"|"CREATED_TIME"|"LAST_MODIFIED_TIME",
      sortOrder = "ASCENDING"|"DESCENDING",
      nextToken = "string"
    )
