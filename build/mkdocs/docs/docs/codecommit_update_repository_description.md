<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_repository_description</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets or changes the comment or description for a repository

### Description

Sets or changes the comment or description for a repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository description
on a webpage.

### Usage

    codecommit_update_repository_description(repositoryName,
      repositoryDescription)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_repository_description_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to set or change the
comment or description for.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_repository_description_:_repositoryDescription">repositoryDescription</code></td>
<td><p>The new comment or description for the specified repository.
Repository descriptions are limited to 1,000 characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_repository_description(
      repositoryName = "string",
      repositoryDescription = "string"
    )
