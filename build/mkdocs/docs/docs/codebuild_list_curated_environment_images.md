<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_curated_environment_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about Docker images that are managed by CodeBuild

### Description

Gets information about Docker images that are managed by CodeBuild.

### Usage

    codebuild_list_curated_environment_images()

### Value

A list with the following syntax:

    list(
      platforms = list(
        list(
          platform = "DEBIAN"|"AMAZON_LINUX"|"UBUNTU"|"WINDOWS_SERVER",
          languages = list(
            list(
              language = "JAVA"|"PYTHON"|"NODE_JS"|"RUBY"|"GOLANG"|"DOCKER"|"ANDROID"|"DOTNET"|"BASE"|"PHP",
              images = list(
                list(
                  name = "string",
                  description = "string",
                  versions = list(
                    "string"
                  )
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$list_curated_environment_images()
