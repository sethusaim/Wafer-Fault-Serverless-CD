from os import environ
from os.path import join

new_tag = environ["DOCKERTAG"]

file_name = join("lambda_function_manifests", environ["COMP_FILE"])


def read_text():
    try:
        with open(file_name, "r") as f:
            content = f.readline()

        return content

    except Exception as e:
        raise e


def update_text():
    try:
        config = read_text()

        old_tag = config.split(":")[-1]

        text_with_new_tag = config.replace(old_tag, f"v" + new_tag)

        with open(file_name, "w") as fp:
            fp.write(text_with_new_tag)

    except Exception as e:
        raise e


if __name__ == "__main__":
    update_text()
