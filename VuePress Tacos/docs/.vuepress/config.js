import defaultTheme from '@vuepress/theme-default'
import searchPlugin from '@vuepress/plugin-search'

module.exports = {
  title: 'TacOS Documentation',
  description: 'Un système d’exploitation libre et open source',
  head: [
    ['link', { rel: 'icon', href: '/logo.png' }],
  ],
  theme : defaultTheme({
    logo: '/logo.png',
    repo: 'https://github.com/epi-osdev/TacOS',

    navbar: [
      {
        text: 'Guide',
        children: [
          {
            text: 'Introduction',
            link: '/guide/Introduction.md',
          },
          {
            text: 'Code Introduction',
            link: '/guide/code/Introduction.md',
          },
          {
            text: 'Coding style',
            link: '/guide/coding_style/CODING_STYLE.md',
          },
        ],
      },
    ],

    sidebar: [
      {
        collapsible: true,
        text: 'Introduction',
        children: [
          '/guide/Introduction.md',
        ],
      },
      {
        collapsible: true,
        text: 'Code',
        children: [
          '/guide/code/Introduction.md',
          {
            collapsible: true,
            text: 'Boot',
            children: [
              '/guide/code/boot/boot.md',
              '/guide/code/boot/boot_sector.md',
              '/guide/code/boot/disk.md',
              '/guide/code/boot/gdt.md',
              '/guide/code/boot/kernel_entry.md',
              '/guide/code/boot/switch_pm.md',
            ],
          },
          {
            collapsible: true,
            text: 'Drivers',
            children: [
              {
                collapsible: true,
                text: 'IDT',
                children: [
                  '/guide/code/drivers/idt.md',
                  '/guide/code/drivers/idt/idt.md',
                  '/guide/code/drivers/idt/datas.md',
                  '/guide/code/drivers/idt/init.md',
                ],
              },
              '/guide/code/drivers/keyboard.md',
              '/guide/code/drivers/pic.md',
            ]
          },
          {
            collapsible: true,
            text: 'Utils',
            children: [
              '/guide/code/utils/string.md',
              '/guide/code/utils/UTILS.md',
              '/guide/code/utils/VGA.md',
            ]
          },
        ],
      },
      {
        collapsible: true,
        text: 'Coding style',
        children: [
          '/guide/coding_style/CODING_STYLE.md',
          '/guide/coding_style/braces.md',
          '/guide/coding_style/comments.md',
          '/guide/coding_style/constants.md',
          '/guide/coding_style/dry.md',
          '/guide/coding_style/functions.md',
          '/guide/coding_style/global_variables.md',
          '/guide/coding_style/guards.md',
          '/guide/coding_style/headers.md',
          '/guide/coding_style/includes.md',
          '/guide/coding_style/indentation.md',
          '/guide/coding_style/line_length.md',
          '/guide/coding_style/naming.md',
          '/guide/coding_style/pointers.md',
          '/guide/coding_style/spaces.md',
          '/guide/coding_style/srp.md',
          '/guide/coding_style/structures.md',
          '/guide/coding_style/types.md',
        ]
      },
    ],
  }),
  plugins: [
      searchPlugin({
      // options
      }),
  ],
}
