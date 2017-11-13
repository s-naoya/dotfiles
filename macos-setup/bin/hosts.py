#!/usr/bin/env python

import json
import os


def main():
    python_interp = os.popen('which python').read().rstrip()

    print(json.dumps({
        'localhost': {
            'hosts': [
                '127.0.0.1'
            ]
        },
        '_meta': {
            'hostvars': {
                '127.0.0.1': {
                    'ansible_python_interpreter': python_interp,
                    'user_dir': os.environ['HOME'],
                    'ansible_user_id': os.environ['USER'],
                    'ansible_dir': os.environ['PWD']
                    }
                }
            }
        }))


if __name__ == '__main__':
    main()
