    box.schema.create_space('users', {

        format = {

            { name = 'login', type = 'string' },

            { name = 'bucket_id', type = 'unsigned' },

            { name = 'password', type = 'string' }

        },

        if_not_exists = true

    })

    box.space.users:create_index('login', { parts = { 'login' }, if_not_exists = true })

    box.space.users:create_index('bucket_id', { parts = { 'bucket_id' }, unique = false, if_not_exists = true })

    box.schema.create_space('tokens', {

        format = {

            { name = 'login', type = 'string' },

            { name = 'bucket_id', type = 'unsigned' },

            { name = 'token', type = 'string' },

            {name = 'expires' , type = 'unsigned'}

        },

        if_not_exists = true

    })

    box.space.tokens:create_index('login', { parts = { 'login' }, if_not_exists = true })

    box.space.tokens:create_index('bucket_id', { parts = { 'bucket_id' }, unique = false, if_not_exists = true })