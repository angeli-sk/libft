/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_islower_bonus.c                                 :+:    :+:            */
/*                                                     +:+                    */
/*   By: akramp <marvin@codam.nl>                     +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/10/29 12:24:28 by akramp         #+#    #+#                */
/*   Updated: 2019/11/17 13:16:02 by akramp        ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

int		ft_islower(int c)
{
	if (c >= 'a' && c <= 'z')
		return (1);
	else
		return (0);
}
