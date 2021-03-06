/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tle-meur <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/23 14:49:48 by tle-meur          #+#    #+#             */
/*   Updated: 2015/12/06 20:19:03 by tle-meur         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstiter(t_list *lst, void (*f)(t_list *elem))
{
	t_list	*i;
	t_list	*tmp;

	if (f)
	{
		i = lst;
		while (i)
		{
			tmp = i;
			i = i->next;
			(*f)(tmp);
		}
	}
}
